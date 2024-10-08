import requests
import datetime
tenant_id=""
auth_endpoint=f"https://login.microsoftonline.com/{tenant_id}/oauth2/v2.0/token"
client_id=""
client_secret=""
list={"secret_name":"keyvault_url or keyvault name"}

class GetTokenInfo:
    def getMicrosoftToken(self,client_id,client_secret,auth_endpoint):
        payload={'client_id':client_id,'client_secret':client_secret,
                 'grant_type':'client_credentials','scope':'https://vault.azure.net/.default'
                 }
        headers={'Host':'login.microsoftonline.com', 'Content_type':'application/x-www-form-urlencoded'}
        token_response=requests.post(auth_endpoint,headers=headers,data=payload,verify=False)
        token_response.raise_for_status()
        return token_response['access_token']
    def GetTokenInfo(self,token_name,vaultBaseurl,client_id,client_secret,auth_endpoint):
        token=self.getMicrosoftToken(self,client_id,client_secret,auth_endpoint)
        headers={
            'Authorization':f'Bearer {token}'
        }
        keyvault_url=f'https//{vaultBaseurl}.vault.azure.net/secrets/{token_name}?api-version=7.4'
        response=requests.request('GET',keyvault_url,headers=headers,payloads={})
        print("Full response is ",response.text)
        result=response.json()

        print(f'Token for {token_name} is ',result['value'])
        print(f'Token for {token_name} is ',datetime.datetime.fromtimestamp(result['attribute']['created']))
        print(f'Token for {token_name} is ',datetime.datetime.fromtimestamp(result['attribute']['exp']))

for name, url in list.items():
    GetTokenInfo().GetTokenInfo(name,url,client_id,client_secret,auth_endpoint)
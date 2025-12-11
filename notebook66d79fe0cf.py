# %% [markdown] {"id":"pBETV6aO2d39"}
# # API Credentials
# 
# To use the Kaggle API, sign up for a Kaggle account at https://www.kaggle.com. Then go to the 'Account' tab of your user profile (https://www.kaggle.com/<username>/account) and select 'Create API Token'. This will trigger the download of kaggle.json, a file containing your API credentials.
# 
# Place this file on your Google Drive anywhere.
# 
# With the next snippet you download your credentials to Colab and you can start using Kaggle API

# %% [markdown] {"id":"mf2ENBI217Zd"}
# # This notebook provides a recipe for using Kaggle API with Colab

# %% [code] {"id":"YMvFLpBQlBTR","outputId":"e4e73b70-62af-4b42-f711-d2cdafd4a030","executionInfo":{"status":"ok","timestamp":1764858885399,"user_tz":-330,"elapsed":9731,"user":{"displayName":"Surendrakumar Ramlignam","userId":"13521092179525563144"}}}
!pip install kaggle

# %% [markdown] {"id":"g9nFsHN31sSm"}
# 

# %% [code] {"id":"y5_288BYp6H1","outputId":"39826bf7-f5ad-4ad0-cfed-c0f2299f2fa4","executionInfo":{"status":"error","timestamp":1764858962606,"user_tz":-330,"elapsed":77199,"user":{"displayName":"Surendrakumar Ramlignam","userId":"13521092179525563144"}}}
from googleapiclient.discovery import build
import io, os
from googleapiclient.http import MediaIoBaseDownload
from google.colab import auth

auth.authenticate_user()

drive_service = build('drive', 'v3')
results = drive_service.files().list(
        q="name = 'kaggle.json'", fields="files(id)").execute()
kaggle_api_key = results.get('files', [])

filename = "/content/.kaggle/kaggle.json"
os.makedirs(os.path.dirname(filename), exist_ok=True)

request = drive_service.files().get_media(fileId=kaggle_api_key[0]['id'])
fh = io.FileIO(filename, 'wb')
downloader = MediaIoBaseDownload(fh, request)
done = False
while done is False:
    status, done = downloader.next_chunk()
    print("Download %d%%." % int(status.progress() * 100))
os.chmod(filename, 600)

# %% [code] {"id":"00W4uZsqzF4E"}


# %% [code] {"id":"DCcGyoeDzGOs"}


# %% [code] {"id":"5l1V_oxXsZ8l","executionInfo":{"status":"aborted","timestamp":1764858962616,"user_tz":-330,"elapsed":12,"user":{"displayName":"Surendrakumar Ramlignam","userId":"13521092179525563144"}}}
!kaggle competitions list
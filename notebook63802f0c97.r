{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "1fd75e72",
   "metadata": {
    "_cell_guid": "8bc8aed1-3e4c-4737-acbf-0d0c7d2fc45a",
    "_uuid": "94edb215-f6f6-408e-b53d-b537a2d2df25",
    "collapsed": false,
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.001443,
     "end_time": "2025-12-14T06:01:44.153514",
     "exception": false,
     "start_time": "2025-12-14T06:01:44.152071",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# This R environment comes with many helpful analytics packages installed\n",
    "# It is defined by the kaggle/rstats Docker image: https://github.com/kaggle/docker-rstats\n",
    "# For example, here's a helpful package to load\n",
    "\n",
    "library(tidyverse) # metapackage of all tidyverse packages\n",
    "\n",
    "# Input data files are available in the read-only \"../input/\" directory\n",
    "# For example, running this (by clicking run or pressing Shift+Enter) will list all files under the input directory\n",
    "\n",
    "list.files(path = \"../input\")\n",
    "\n",
    "# You can write up to 20GB to the current directory (/kaggle/working/) that gets preserved as output when you create a version using \"Save & Run All\" \n",
    "# You can also write temporary files to /kaggle/temp/, but they won't be saved outside of the current session"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "nvidiaTeslaT4",
   "dataSources": [
    {
     "databundleVersionId": 14708861,
     "sourceId": 124849,
     "sourceType": "competition"
    }
   ],
   "isGpuEnabled": true,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.050128,
   "end_time": "2025-12-14T06:01:44.274413",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-12-14T06:01:40.224285",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

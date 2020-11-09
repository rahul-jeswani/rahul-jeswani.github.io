#! /bin/sh
helm package charts/*
helm repo index --url https://rahul-jeswani.gihub.io .


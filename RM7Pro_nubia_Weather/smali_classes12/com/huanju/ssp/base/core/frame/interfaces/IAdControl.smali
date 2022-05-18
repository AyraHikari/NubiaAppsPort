.class public interface abstract Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;
.super Ljava/lang/Object;
.source "IAdControl.java"


# virtual methods
.method public abstract clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end method

.method public abstract clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;Lcom/huanju/ssp/base/core/download/listener/DownloadStateListener;)V
.end method

.method public abstract clickAdClos(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;ILjava/lang/String;)V
.end method

.method public abstract clickAdDownload(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end method

.method public abstract getAdInnerView(Landroid/content/Context;II)Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;
.end method

.method public abstract isViewCovered(Landroid/view/View;F)Z
.end method

.method public abstract loadImage(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V
.end method

.method public abstract requestAd(Lcom/huanju/ssp/base/core/request/ad/bean/AdParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdStateChangListener;)V
.end method

.method public abstract setAdShareClickListener(Lcom/huanju/ssp/base/core/frame/listeners/AdShareClickListener;)V
.end method

.method public abstract setClickAdListener(Lcom/huanju/ssp/base/core/frame/listeners/ClickAdStateChangListener;)V
.end method

.method public abstract setTrackerTaskListener(Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;)V
.end method

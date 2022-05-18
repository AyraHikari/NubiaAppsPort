.class public interface abstract Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;
.super Ljava/lang/Object;
.source "IAdInnerView.java"


# virtual methods
.method public abstract drawAdClick(Landroid/graphics/Canvas;Ljava/lang/String;IIIZ)Landroid/graphics/RectF;
.end method

.method public abstract drawAdLogo(Landroid/graphics/Canvas;F)V
.end method

.method public abstract drawAdProccess(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)Landroid/graphics/RectF;
.end method

.method public abstract drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZ)Landroid/graphics/RectF;
.end method

.method public abstract drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZZ)Landroid/graphics/RectF;
.end method

.method public abstract getErrImpTiem()[J
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract recycleView()V
.end method

.method public abstract renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
.end method

.method public abstract setOnDrawListener(Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;)V
.end method

.method public abstract setPrepareListen(Landroid/media/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract showView()Z
.end method

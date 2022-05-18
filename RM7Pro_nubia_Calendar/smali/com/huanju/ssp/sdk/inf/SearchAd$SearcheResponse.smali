.class public interface abstract Lcom/huanju/ssp/sdk/inf/SearchAd$SearcheResponse;
.super Ljava/lang/Object;
.source "SearchAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/SearchAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearcheResponse"
.end annotation


# static fields
.field public static final BIG_IMAG:I = 0x3

.field public static final IMAGS:I = 0x1

.field public static final SMALL_IMAG:I = 0x2


# virtual methods
.method public varargs abstract bindingImgUrl([I)V
.end method

.method public abstract bindingSource(I)V
.end method

.method public abstract bindingSub_title(I)V
.end method

.method public abstract bindingTitle(I)V
.end method

.method public abstract closeClick(Landroid/view/View;ILjava/lang/String;)V
.end method

.method public abstract downloadClick(Landroid/view/View;)V
.end method

.method public abstract getDownloadAppName()Ljava/lang/String;
.end method

.method public abstract getH()I
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSubTitle()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getW()I
.end method

.method public abstract handleClick(Landroid/view/View;)V
.end method

.method public abstract isDownloadApp()Z
.end method

.method public abstract loadImage(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract recordImpression(Landroid/view/View;)V
.end method

.method public abstract setImagsBindDataProxy(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTitlBindDataProxy(Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/SearchAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

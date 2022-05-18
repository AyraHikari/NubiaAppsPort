.class public Lcn/nubia/accountsdk/common/CetificationLackingException;
.super Ljava/lang/Exception;
.source "CetificationLackingException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CetificationActivity is lack,please comfirm account apk version >= V5.0.6"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "CetificationActivity is lack"

    .line 8
    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

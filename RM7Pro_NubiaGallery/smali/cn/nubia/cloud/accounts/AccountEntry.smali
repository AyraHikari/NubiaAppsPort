.class public interface abstract Lcn/nubia/cloud/accounts/AccountEntry;
.super Ljava/lang/Object;
.source "AccountEntry.java"


# static fields
.field public static final ACTION_ACCOUNT_CHANGED:Ljava/lang/String; = "cn.nubia.account.broadcastchange"

.field public static final EXTRA_CHANGE:Ljava/lang/String; = "change"

.field public static final EXTRA_LOGIN:Ljava/lang/String; = "login"

.field public static final EXTRA_LOGOUT:Ljava/lang/String; = "logout"

.field public static final KEY_UNIQUE_CODE:Ljava/lang/String; = "unique_code"

.field public static final NUBIA_ACCOUNT_PKG_NAME:Ljava/lang/String; = "cn.nubia.accounts"

.field public static final REQUEST_TOKEN_CODE:I = 0x2710

.field public static final SP_NAME_ACCOUNT:Ljava/lang/String; = "cloud_account"


# virtual methods
.method public abstract bindBaiduAccount(Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation
.end method

.method public abstract getBaiduPCSToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation
.end method

.method public abstract getFloatUserData(Ljava/lang/String;F)F
.end method

.method public abstract getIntUserData(Ljava/lang/String;I)I
.end method

.method public abstract getLongUserData(Ljava/lang/String;J)J
.end method

.method public abstract getNBAccountInfo()Lcn/nubia/cloud/accounts/NBAccountInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/accounts/AccountNotFountException;
        }
    .end annotation
.end method

.method public abstract getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserToken()Ljava/lang/String;
.end method

.method public abstract isAccountLogin()Z
.end method

.method public abstract putUserData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract removeUserData(Ljava/lang/String;)V
.end method

.method public abstract requestCloudToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation
.end method

.method public abstract requestUniqueCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/cloud/common/RequestException;
        }
    .end annotation
.end method

.method public abstract switchToAccountDetailPage(Landroid/content/Context;)V
.end method

.method public abstract switchToChangePassworldPage(Landroid/content/Context;)V
.end method

.method public abstract switchToLoginPage(Landroid/app/Activity;I)V
.end method

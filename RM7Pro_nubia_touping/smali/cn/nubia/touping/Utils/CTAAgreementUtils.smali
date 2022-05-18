.class public Lcn/nubia/touping/Utils/CTAAgreementUtils;
.super Ljava/lang/Object;
.source "CTAAgreementUtils.java"


# static fields
.field private static final HASAGREECTAAGREEMENT:Ljava/lang/String; = "HASAGREECTAAGREEMENT"

.field private static final defultValue:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHASAGREECTAAGREEMENT(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 13
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "HASAGREECTAAGREEMENT"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 14
    .local v0, "hasAgreeCTAAgreement":Z
    return v0
.end method

.method public static setHASAGREECTAAGREEMENT(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "HASAGREECTAAGREEMENT"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    return-void
.end method

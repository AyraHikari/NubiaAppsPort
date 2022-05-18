.class public Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;
.super Ljava/lang/Object;
.source "MobclickAgentUtil.java"


# static fields
.field private static mEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->mEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    return-void
.end method

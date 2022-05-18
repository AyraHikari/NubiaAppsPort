.class public Lcn/nubia/notepad/utils/NubiaLogUtils;
.super Ljava/lang/Object;
.source "NubiaLogUtils.java"


# static fields
.field private static final LOG_ENABLED:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "Notepad"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showLogWithPermit(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "Notepad"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method

.method public static showLogWithoutPermit(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "Notepad"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

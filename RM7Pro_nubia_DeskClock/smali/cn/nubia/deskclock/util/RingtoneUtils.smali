.class public Lcn/nubia/deskclock/util/RingtoneUtils;
.super Ljava/lang/Object;
.source "RingtoneUtils.java"


# static fields
.field public static final DEFAULT_VOLUEM_INCALLING:I = 0x6

.field public static final KEY_MESSAGE_PROMPT:Ljava/lang/String; = "message_prompts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPlayAlarmWhenCalling(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "message_prompts"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 13
    .local v0, "messagePrompts":I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    .line 16
    :cond_1
    return v1
.end method

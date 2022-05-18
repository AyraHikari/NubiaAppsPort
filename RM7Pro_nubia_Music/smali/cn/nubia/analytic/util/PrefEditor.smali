.class public Lcn/nubia/analytic/util/PrefEditor;
.super Ljava/lang/Object;
.source "PrefEditor.java"


# static fields
.field private static final COMMON_PREF_FILE:Ljava/lang/String; = "sdk_common"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static readBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return p3

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_0
.end method

.method public static readCommonBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 46
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->readBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readCommonInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 30
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readCommonLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 38
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2, p3}, Lcn/nubia/analytic/util/PrefEditor;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readCommonString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return p3

    .line 81
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0
.end method

.method private static readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    return-wide p3

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    goto :goto_0
.end method

.method private static readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-object p3

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private static writeBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static writeCommonBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->writeBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public static writeCommonInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->writeInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static writeCommonLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2, p3}, Lcn/nubia/analytic/util/PrefEditor;->writeLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    return-void
.end method

.method public static writeCommonString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const-string v0, "sdk_common"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/analytic/util/PrefEditor;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private static writeInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static writeLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

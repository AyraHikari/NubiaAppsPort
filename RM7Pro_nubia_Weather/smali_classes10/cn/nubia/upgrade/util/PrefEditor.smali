.class public Lcn/nubia/upgrade/util/PrefEditor;
.super Ljava/lang/Object;
.source "PrefEditor.java"


# static fields
.field private static final PRIVATE_PREF_FILE:Ljava/lang/String; = "private_upgrade_config"

.field private static final PUBLIC_PREF_FILE:Ljava/lang/String; = "public"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    .line 107
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    return-void
.end method

.method private static getPrivatePrefFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "private_upgrade_config"

    return-object v0
.end method

.method private static readBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    .end local p3    # "defValue":Z
    :goto_0
    return p3

    .line 223
    .restart local p3    # "defValue":Z
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_0
.end method

.method private static readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    .end local p3    # "defValue":I
    :goto_0
    return p3

    .line 157
    .restart local p3    # "defValue":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_0
.end method

.method private static readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    .end local p3    # "defValue":J
    :goto_0
    return-wide p3

    .line 179
    .restart local p3    # "defValue":J
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 181
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    goto :goto_0
.end method

.method public static readPrivateBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    .line 87
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/upgrade/util/PrefEditor;->readBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readPrivateBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 82
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->readBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readPrivateInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 65
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readPrivateLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 92
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcn/nubia/upgrade/util/PrefEditor;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readPrivateLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .prologue
    .line 97
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/upgrade/util/PrefEditor;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readPrivateString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->readPrivateString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readPrivateString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/upgrade/util/PrefEditor;->readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readPublicBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 31
    const-string v0, "public"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->readBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readPublicInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 61
    const-string v0, "public"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readPublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "public"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    .end local p3    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 135
    .restart local p3    # "defValue":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private static writeBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 213
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static writeInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static writeLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static writePrivateBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/upgrade/util/PrefEditor;->writeBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public static writePrivateBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 70
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->writeBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public static writePrivateInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 49
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->writeInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method public static writePrivateLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 53
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcn/nubia/upgrade/util/PrefEditor;->writeLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    return-void
.end method

.method public static writePrivateString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {}, Lcn/nubia/upgrade/util/PrefEditor;->getPrivatePrefFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static writePrivateString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/upgrade/util/PrefEditor;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static writePublicBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 26
    const-string v0, "public"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->writeBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    return-void
.end method

.method public static writePublicInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 57
    const-string v0, "public"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->writeInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public static writePublicString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "public"

    invoke-static {p0, v0, p1, p2}, Lcn/nubia/upgrade/util/PrefEditor;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private static writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

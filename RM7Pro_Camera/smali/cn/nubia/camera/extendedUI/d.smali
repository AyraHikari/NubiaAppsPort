.class public Lcn/nubia/camera/extendedUI/d;
.super Lcn/nubia/camera/extendedUI/b;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/extendedUI/d$a;
    }
.end annotation


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/content/SharedPreferences;

.field private f:F

.field private g:Z

.field private h:Lcn/nubia/camera/extendedUI/d$a;

.field private i:Landroid/os/Handler;

.field private j:Lcom/android/common/ui/k$a;

.field private k:Lcom/android/common/ui/k$a;

.field private l:Lcn/nubia/camera/am/a;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcn/nubia/camera/extendedUI/d;->b:I

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/d;->d:Z

    .line 49
    invoke-static {}, Lcn/nubia/camera/ba/a;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->g:Z

    .line 209
    new-instance v0, Lcn/nubia/camera/extendedUI/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/extendedUI/d$1;-><init>(Lcn/nubia/camera/extendedUI/d;)V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/d;->i:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcn/nubia/camera/extendedUI/d$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/extendedUI/d$2;-><init>(Lcn/nubia/camera/extendedUI/d;)V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/d;->k:Lcom/android/common/ui/k$a;

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    .line 288
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/d;->m:Z

    .line 54
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/d;->getAlpha()F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/d;->f:F

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/d;Ljava/lang/String;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/d;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/d;I)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PopupFlashButton"

    .line 159
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/d;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcn/nubia/camera/extendedUI/d;->g:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/d;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/d;->m:Z

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x100

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 193
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 197
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1

    :goto_3
    if-eqz v0, :cond_1

    .line 197
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    :cond_1
    :goto_4
    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/extendedUI/d;I)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/extendedUI/d;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/extendedUI/d;I)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/extendedUI/d;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcn/nubia/camera/extendedUI/d;->m:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/extendedUI/d;I)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/extendedUI/d$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->h:Lcn/nubia/camera/extendedUI/d$a;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/extendedUI/d;I)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/extendedUI/d;I)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/extendedUI/d;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcn/nubia/camera/extendedUI/d;->d:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/extendedUI/d;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/extendedUI/d;)Lcn/nubia/camera/am/a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcn/nubia/camera/extendedUI/d;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->e:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LOW_POWER_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    .line 100
    iget v1, p0, Lcn/nubia/camera/extendedUI/d;->b:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_SAVED_FLASH_MODE"

    .line 103
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_LOW_POWER_MODE"

    const/4 v2, 0x1

    .line 104
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    iput-boolean v2, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Power is less than threshold. Disable Flash: off"

    .line 107
    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/d;->a(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/d;->d()V

    goto :goto_0

    :cond_1
    if-le v1, v3, :cond_2

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LOW_POWER_MODE"

    .line 112
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    iput-boolean v2, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->e:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SAVED_FLASH_MODE"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power recovery. Enable Flash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/d;->a(Ljava/lang/String;)V

    .line 119
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    if-eqz v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_3
    iget v0, p0, Lcn/nubia/camera/extendedUI/d;->f:F

    :goto_1
    invoke-super {p0, v0}, Lcn/nubia/camera/extendedUI/b;->setAlpha(F)V

    .line 120
    monitor-exit p0

    return-void

    .line 96
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic i(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 170
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/class/thermal/thermal_zone83/temp"

    .line 171
    invoke-direct {p0, v0}, Lcn/nubia/camera/extendedUI/d;->b(Ljava/lang/String;)I

    move-result v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstIn temp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PopupFlashButton"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0xd6d8

    if-lt v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/d;->setSelectedIconIndex(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/extendedUI/d;)Lcom/android/common/ui/k$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->j:Lcom/android/common/ui/k$a;

    return-object p0
.end method

.method private j()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, "off"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "torch"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/d;->a:Lcom/android/preference/IconListPreference;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->d:Z

    .line 137
    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->m:Z

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/d;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->dismiss()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcn/nubia/camera/extendedUI/d;->b:I

    .line 166
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->h()V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Lcn/nubia/camera/a;)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d;->e:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/d;->d:Z

    .line 127
    invoke-virtual {p2}, Lcn/nubia/camera/a;->c()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/d;->b:I

    .line 128
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->h()V

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Enable flash temp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/camera/extendedUI/d;->g:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; isTorch: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->j()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PopupFlashButton"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->i()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->a(Lcom/android/preference/IconListPreference;)V

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->h()V

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/d;->i()V

    return-void
.end method

.method protected b()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f00e7

    new-instance v3, Lcn/nubia/camera/extendedUI/d$4;

    invoke-direct {v3, p0}, Lcn/nubia/camera/extendedUI/d$4;-><init>(Lcn/nubia/camera/extendedUI/d;)V

    .line 293
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f00e8

    new-instance v3, Lcn/nubia/camera/extendedUI/d$3;

    invoke-direct {v3, p0}, Lcn/nubia/camera/extendedUI/d$3;-><init>(Lcn/nubia/camera/extendedUI/d;)V

    .line 302
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    .line 314
    new-instance v2, Lcn/nubia/camera/extendedUI/d$5;

    invoke-direct {v2, p0}, Lcn/nubia/camera/extendedUI/d$5;-><init>(Lcn/nubia/camera/extendedUI/d;)V

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    new-instance v2, Lcn/nubia/camera/extendedUI/d$6;

    invoke-direct {v2, p0}, Lcn/nubia/camera/extendedUI/d$6;-><init>(Lcn/nubia/camera/extendedUI/d;)V

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCanceledOnTouchOutside(Z)V

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d;->l:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 77
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 153
    iput p1, p0, Lcn/nubia/camera/extendedUI/d;->f:F

    .line 154
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->c:Z

    if-eqz v0, :cond_0

    const p1, 0x3ecccccd    # 0.4f

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->setAlpha(F)V

    return-void
.end method

.method public setHighTemperautreListener(Lcn/nubia/camera/extendedUI/d$a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d;->h:Lcn/nubia/camera/extendedUI/d$a;

    return-void
.end method

.method public setSwitcherListener(Lcom/android/common/ui/k$a;)V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/d;->g:Z

    if-eqz v0, :cond_0

    .line 252
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d;->j:Lcom/android/common/ui/k$a;

    .line 253
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d;->k:Lcom/android/common/ui/k$a;

    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    :goto_0
    return-void
.end method

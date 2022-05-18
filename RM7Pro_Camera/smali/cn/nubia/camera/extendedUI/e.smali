.class public Lcn/nubia/camera/extendedUI/e;
.super Lcn/nubia/camera/extendedUI/b;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/a$a;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/content/SharedPreferences;

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcn/nubia/camera/extendedUI/e;->b:I

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/e;->d:Z

    .line 30
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/e;->getAlpha()F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/e;->f:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->d:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcn/nubia/camera/extendedUI/e;->b:I

    .line 111
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/e;->c()V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Lcn/nubia/camera/a;)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/e;->e:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcn/nubia/camera/extendedUI/e;->d:Z

    .line 66
    invoke-virtual {p2}, Lcn/nubia/camera/a;->c()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/extendedUI/e;->b:I

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/e;->c()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupHdrButton"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->a(Lcom/android/preference/IconListPreference;)V

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/e;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Lcn/nubia/camera/extendedUI/e;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/e;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/e;->a:Lcom/android/preference/IconListPreference;

    if-nez v0, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/e;->e:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LOW_POWER_MODE_5PER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    .line 84
    iget v1, p0, Lcn/nubia/camera/extendedUI/e;->b:I

    const/4 v3, 0x5

    if-gt v1, v3, :cond_1

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LOW_POWER_MODE_5PER"

    const/4 v2, 0x1

    .line 86
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    iput-boolean v2, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "PopupHdrButton"

    const-string v1, "Power is less than threshold. Disable hdr"

    .line 89
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/e;->d()V

    goto :goto_0

    :cond_1
    if-le v1, v3, :cond_2

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/e;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_LOW_POWER_MODE_5PER"

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    iput-boolean v2, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "PopupHdrButton"

    const-string v1, "Power recovery. Enable hdr: "

    .line 96
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    if-eqz v0, :cond_3

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_3
    iget v0, p0, Lcn/nubia/camera/extendedUI/e;->f:F

    :goto_1
    invoke-super {p0, v0}, Lcn/nubia/camera/extendedUI/b;->setAlpha(F)V

    .line 99
    monitor-exit p0

    return-void

    .line 80
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 47
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 104
    iput p1, p0, Lcn/nubia/camera/extendedUI/e;->f:F

    .line 105
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/e;->c:Z

    if-eqz v0, :cond_0

    const p1, 0x3ecccccd    # 0.4f

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/b;->setAlpha(F)V

    return-void
.end method

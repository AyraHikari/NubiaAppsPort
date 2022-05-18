.class Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundButtonCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 83
    sget-boolean v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    if-nez v1, :cond_0

    .line 85
    :try_start_0
    const-class v1, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 86
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    sput-boolean v4, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableFieldFetched:Z

    .line 93
    :cond_0
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 95
    :try_start_1
    sget-object v1, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_1
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "CompoundButtonCompat"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "CompoundButtonCompat"

    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatBaseImpl;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    move-object v1, v2

    .line 101
    goto :goto_1
.end method

.method public getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 63
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p1    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .restart local p1    # "button":Landroid/widget/CompoundButton;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 76
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p1    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .restart local p1    # "button":Landroid/widget/CompoundButton;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 57
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p1    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 70
    instance-of v0, p1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p1    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 73
    :cond_0
    return-void
.end method

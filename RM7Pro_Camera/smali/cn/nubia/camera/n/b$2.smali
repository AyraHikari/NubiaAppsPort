.class Lcn/nubia/camera/n/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/ZtemtFunEffectSlider$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/n/b;->a(Landroid/view/View;Lcom/android/preference/ListPreference;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/n/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcn/nubia/camera/n/b$2;->a:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/n/b$2;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/n/b$2;->a:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/n/f;->a(F)V

    :cond_0
    return-void
.end method

.class Lcn/nubia/camera/bd/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bd/b;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bd/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bd/b;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/nubia/camera/bd/b$1;->a:Lcn/nubia/camera/bd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/bd/b$1;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/bd/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bd/f;->b(Z)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bd/b$1;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/bd/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bd/f;->b(Z)V

    .line 159
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click position= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "==="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bd/b$1;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->b(Lcn/nubia/camera/bd/b;)Lcom/android/preference/IconListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomBlurFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class Lcn/nubia/camera/q/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/three_a/ui/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/l;->a(Landroid/view/View;Lcn/nubia/camera/q/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/l;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/q/l$4;->a:Lcn/nubia/camera/q/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/q/l$4;->a:Lcn/nubia/camera/q/l;

    invoke-static {v0}, Lcn/nubia/camera/q/l;->d(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/q/l$4;->a:Lcn/nubia/camera/q/l;

    invoke-static {v0}, Lcn/nubia/camera/q/l;->d(Lcn/nubia/camera/q/l;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f08005e

    goto :goto_0

    :cond_0
    const p1, 0x7f08005d

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

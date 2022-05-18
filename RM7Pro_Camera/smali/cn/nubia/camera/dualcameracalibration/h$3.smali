.class Lcn/nubia/camera/dualcameracalibration/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/h;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/h;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h$3;->a:Lcn/nubia/camera/dualcameracalibration/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 117
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h$3;->a:Lcn/nubia/camera/dualcameracalibration/h;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/h;->d(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    .line 118
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/g;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    return-void
.end method

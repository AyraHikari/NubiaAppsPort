.class Lcn/nubia/camera/dualcameracalibration/h$1;
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

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h$1;->a:Lcn/nubia/camera/dualcameracalibration/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 97
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h$1;->a:Lcn/nubia/camera/dualcameracalibration/h;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/h;->a(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/i;->a()V

    .line 98
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/h$1;->a:Lcn/nubia/camera/dualcameracalibration/h;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/h;->b(Lcn/nubia/camera/dualcameracalibration/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->H:Lcn/nubia/camera/af/a;

    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    return-void
.end method

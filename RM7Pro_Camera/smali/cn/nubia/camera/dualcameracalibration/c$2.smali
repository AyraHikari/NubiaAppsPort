.class Lcn/nubia/camera/dualcameracalibration/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/c;->ae()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/c;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$2;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/af/b;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c$2;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/c;->d(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    return-void
.end method

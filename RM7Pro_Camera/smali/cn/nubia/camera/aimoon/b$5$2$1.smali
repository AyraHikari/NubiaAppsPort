.class Lcn/nubia/camera/aimoon/b$5$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b$5$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b$5$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b$5$2;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$5$2$1;->a:Lcn/nubia/camera/aimoon/b$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5$2$1;->a:Lcn/nubia/camera/aimoon/b$5$2;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/b$5$2;->a:Lcn/nubia/camera/aimoon/b$5;

    iget-object v0, v0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->q(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ae/a;->a(J)V

    return-void
.end method

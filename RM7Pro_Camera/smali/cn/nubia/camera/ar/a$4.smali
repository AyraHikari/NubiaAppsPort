.class Lcn/nubia/camera/ar/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ar/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ar/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/a;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcn/nubia/camera/ar/a$4;->a:Lcn/nubia/camera/ar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/ar/a$4;->a:Lcn/nubia/camera/ar/a;

    invoke-static {v0}, Lcn/nubia/camera/ar/a;->e(Lcn/nubia/camera/ar/a;)Lcn/nubia/camera/ar/a$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a$a;->sendEmptyMessage(I)Z

    return-void
.end method

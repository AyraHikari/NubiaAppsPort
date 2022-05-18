.class Lcn/nubia/camera/l/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/l/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/l/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/l/a;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcn/nubia/camera/l/a$4;->a:Lcn/nubia/camera/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcn/nubia/camera/l/a$4;->a:Lcn/nubia/camera/l/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/l/a;->b(Lcn/nubia/camera/l/a;Z)Z

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/l/a$4;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a;->d()V

    return-void
.end method

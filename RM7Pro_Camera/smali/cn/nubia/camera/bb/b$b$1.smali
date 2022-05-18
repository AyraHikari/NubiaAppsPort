.class Lcn/nubia/camera/bb/b$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b$b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/b$b;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcn/nubia/camera/bb/b$b$1;->a:Lcn/nubia/camera/bb/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcn/nubia/camera/bb/b$b$1;->a:Lcn/nubia/camera/bb/b$b;

    iget-object v0, v0, Lcn/nubia/camera/bb/b$b;->b:Lcn/nubia/camera/bb/b;

    iget-object v1, p0, Lcn/nubia/camera/bb/b$b$1;->a:Lcn/nubia/camera/bb/b$b;

    iget v1, v1, Lcn/nubia/camera/bb/b$b;->a:I

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/b;->b(Lcn/nubia/camera/bb/b;I)V

    return-void
.end method

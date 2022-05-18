.class Lcn/nubia/b/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/b/a/b;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a/h$a;

.field final synthetic b:Lcn/nubia/b/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/b/a/b;Lcn/nubia/b/a/h$a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcn/nubia/b/a/b$1;->b:Lcn/nubia/b/a/b;

    iput-object p2, p0, Lcn/nubia/b/a/b$1;->a:Lcn/nubia/b/a/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcn/nubia/b/a/b$1;->a:Lcn/nubia/b/a/h$a;

    iget-object v0, p0, Lcn/nubia/b/a/b$1;->b:Lcn/nubia/b/a/b;

    invoke-interface {p1, v0}, Lcn/nubia/b/a/h$a;->a(Lcn/nubia/b/a/h;)V

    return-void
.end method

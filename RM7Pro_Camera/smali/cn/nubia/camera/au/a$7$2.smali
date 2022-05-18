.class Lcn/nubia/camera/au/a$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a$7;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a$7;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a$7;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lcn/nubia/camera/au/a$7$2;->a:Lcn/nubia/camera/au/a$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1306
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$2;->a:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$2;->a:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->o(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->n()V

    return-void
.end method

.class Lcn/nubia/camera/au/a$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a$7;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcn/nubia/camera/au/a$7;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a$7;II)V
    .locals 0

    .line 1286
    iput-object p1, p0, Lcn/nubia/camera/au/a$7$1;->c:Lcn/nubia/camera/au/a$7;

    iput p2, p0, Lcn/nubia/camera/au/a$7$1;->a:I

    iput p3, p0, Lcn/nubia/camera/au/a$7$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1289
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$1;->c:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1292
    :cond_0
    iget v0, p0, Lcn/nubia/camera/au/a$7$1;->a:I

    if-nez v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$1;->c:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->o(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->o()V

    .line 1295
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$1;->c:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->o(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/j;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/au/a$7$1;->a:I

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcn/nubia/camera/au/a$7$1;->b:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/j;->a(I)V

    return-void
.end method

.class Lcn/nubia/camera/au/a$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a$15;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a$15;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a$15;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcn/nubia/camera/au/a$15$1;->a:Lcn/nubia/camera/au/a$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 520
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a$15$1;->a:Lcn/nubia/camera/au/a$15;

    iget-object v1, v1, Lcn/nubia/camera/au/a$15;->a:Lcn/nubia/camera/au/a;

    const v2, 0x7f0f02e4

    invoke-virtual {v1, v2}, Lcn/nubia/camera/au/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 521
    iget-object v0, p0, Lcn/nubia/camera/au/a$15$1;->a:Lcn/nubia/camera/au/a$15;

    iget-object v0, v0, Lcn/nubia/camera/au/a$15;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->o(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/j;->n()V

    return-void
.end method

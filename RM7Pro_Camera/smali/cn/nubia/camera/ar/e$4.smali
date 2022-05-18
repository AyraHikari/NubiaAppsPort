.class Lcn/nubia/camera/ar/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/e;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcn/nubia/camera/ar/e$4;->a:Lcn/nubia/camera/ar/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcn/nubia/camera/ar/e$4;->a:Lcn/nubia/camera/ar/e;

    iget-object v0, p1, Lcn/nubia/camera/ar/e;->b:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 290
    iget-object p1, p0, Lcn/nubia/camera/ar/e$4;->a:Lcn/nubia/camera/ar/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method

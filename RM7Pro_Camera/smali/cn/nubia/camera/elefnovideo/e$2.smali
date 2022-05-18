.class Lcn/nubia/camera/elefnovideo/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/e;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/e;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e$2;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e$2;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/e;->a(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e$2;->a:Lcn/nubia/camera/elefnovideo/e;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/e;->a(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/c;->m()V

    :cond_0
    return-void
.end method

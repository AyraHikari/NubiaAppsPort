.class Lcn/nubia/camera/at/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcn/nubia/camera/at/e$5;->a:Lcn/nubia/camera/at/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/at/e$5;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->g(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/extendedUI/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f;->a()V

    return-void
.end method

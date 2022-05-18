.class Lcn/nubia/video/player/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/n;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/n;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/n$a;->a:Lcn/nubia/video/player/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/n$a;->a:Lcn/nubia/video/player/n;

    invoke-static {p1}, Lcn/nubia/video/player/n;->p(Lcn/nubia/video/player/n;)Lcn/nubia/video/player/c$e;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/c$e;->onFinish()V

    return-void
.end method

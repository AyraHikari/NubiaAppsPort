.class Lcn/nubia/video/player/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/k;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/k;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/k$g;->a:Lcn/nubia/video/player/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/k$g;->a:Lcn/nubia/video/player/k;

    invoke-static {p1}, Lcn/nubia/video/player/k;->s(Lcn/nubia/video/player/k;)Lcn/nubia/video/player/c$d;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/c$d;->d()V

    return-void
.end method

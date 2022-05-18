.class Lcn/nubia/camera/panorama/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/panorama/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/panorama/c;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/panorama/c$1;->a:Lcn/nubia/camera/panorama/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/panorama/c$1;->a:Lcn/nubia/camera/panorama/c;

    iget v1, v0, Lcn/nubia/camera/panorama/c;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcn/nubia/camera/panorama/c;->a(Lcn/nubia/camera/panorama/c;Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

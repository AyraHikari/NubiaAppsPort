.class Lcn/nubia/camera/videomaker/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/videomaker/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/k;I)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k$2;->b:Lcn/nubia/camera/videomaker/k;

    iput p2, p0, Lcn/nubia/camera/videomaker/k$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 788
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$2;->b:Lcn/nubia/camera/videomaker/k;

    iget v0, p0, Lcn/nubia/camera/videomaker/k$2;->a:I

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/k;->b(Lcn/nubia/camera/videomaker/k;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 790
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

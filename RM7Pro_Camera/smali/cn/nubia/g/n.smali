.class public Lcn/nubia/g/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/VideoView;Ljava/lang/String;)V
    .locals 1

    .line 16
    new-instance v0, Lcn/nubia/g/n$1;

    invoke-direct {v0}, Lcn/nubia/g/n$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 23
    new-instance v0, Lcn/nubia/g/n$2;

    invoke-direct {v0}, Lcn/nubia/g/n$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 30
    new-instance v0, Lcn/nubia/g/n$3;

    invoke-direct {v0, p1, p0}, Lcn/nubia/g/n$3;-><init>(Ljava/lang/String;Landroid/widget/VideoView;)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.class public Lpl/droidsonroids/gif/InputSource$ResourcesSource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourcesSource"
.end annotation


# instance fields
.field private final mResourceId:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 230
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$ResourcesSource;->mResources:Landroid/content/res/Resources;

    .line 231
    iput p2, p0, Lpl/droidsonroids/gif/InputSource$ResourcesSource;->mResourceId:I

    return-void
.end method


# virtual methods
.method open()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$ResourcesSource;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lpl/droidsonroids/gif/InputSource$ResourcesSource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method

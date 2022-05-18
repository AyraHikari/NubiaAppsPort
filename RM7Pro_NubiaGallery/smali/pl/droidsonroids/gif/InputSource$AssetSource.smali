.class public final Lpl/droidsonroids/gif/InputSource$AssetSource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetSource"
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 164
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    .line 165
    iput-object p2, p0, Lpl/droidsonroids/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

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

    .line 170
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lpl/droidsonroids/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method

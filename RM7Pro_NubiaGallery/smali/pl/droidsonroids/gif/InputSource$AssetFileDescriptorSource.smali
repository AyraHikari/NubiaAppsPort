.class public Lpl/droidsonroids/gif/InputSource$AssetFileDescriptorSource;
.super Lpl/droidsonroids/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetFileDescriptorSource"
.end annotation


# instance fields
.field private final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lpl/droidsonroids/gif/InputSource;-><init>()V

    .line 251
    iput-object p1, p0, Lpl/droidsonroids/gif/InputSource$AssetFileDescriptorSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

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

    .line 256
    iget-object v0, p0, Lpl/droidsonroids/gif/InputSource$AssetFileDescriptorSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method

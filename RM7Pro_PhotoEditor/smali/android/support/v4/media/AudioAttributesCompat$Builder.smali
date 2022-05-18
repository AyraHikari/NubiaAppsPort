.class public Landroid/support/v4/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAAObject:Ljava/lang/Object;

.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:Ljava/lang/Integer;

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/AudioAttributesCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    iget-object v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/AudioAttributesCompat;
    .locals 3

    invoke-static {}, Landroid/support/v4/media/AudioAttributesCompat;->access$000()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;-><init>(Landroid/support/v4/media/AudioAttributesCompat$1;)V

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    iput-object v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-static {v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->access$202(Landroid/support/v4/media/AudioAttributesCompat;Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    return-object v0
.end method

.method public setContentType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    :goto_0
    return-object p0
.end method

.method public setFlags(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .locals 1

    and-int/lit16 p1, p1, 0x3ff

    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    return-object p0
.end method

.method public setLegacyStreamType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    invoke-static {p1}, Landroid/support/v4/media/AudioAttributesCompat;->access$300(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUsage(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/support/v4/media/AudioAttributesCompat;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    :pswitch_1
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class final Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioAttributesCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Wrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/media/AudioAttributes;


# direct methods
.method private constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->mWrapped:Landroid/media/AudioAttributes;

    return-void
.end method

.method public static wrap(Landroid/media/AudioAttributes;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-direct {v0, p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;-><init>(Landroid/media/AudioAttributes;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AudioAttributesApi21.Wrapper cannot wrap null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public unwrap()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->mWrapped:Landroid/media/AudioAttributes;

    return-object v0
.end method

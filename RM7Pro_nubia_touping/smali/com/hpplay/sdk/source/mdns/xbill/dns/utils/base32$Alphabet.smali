.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32$Alphabet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alphabet"
.end annotation


# static fields
.field public static final BASE32:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567="

.field public static final BASE32HEX:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUV="


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method

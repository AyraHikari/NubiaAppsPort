.class Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECKeyInfo"
.end annotation


# instance fields
.field public a:Ljava/math/BigInteger;

.field public b:Ljava/math/BigInteger;

.field curve:Ljava/security/spec/EllipticCurve;

.field public gx:Ljava/math/BigInteger;

.field public gy:Ljava/math/BigInteger;

.field length:I

.field public n:Ljava/math/BigInteger;

.field public p:Ljava/math/BigInteger;

.field spec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v1, 0x10

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->length:I

    .line 701
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->p:Ljava/math/BigInteger;

    .line 702
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->a:Ljava/math/BigInteger;

    .line 703
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->b:Ljava/math/BigInteger;

    .line 704
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->gx:Ljava/math/BigInteger;

    .line 705
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p6, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->gy:Ljava/math/BigInteger;

    .line 706
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p7, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->n:Ljava/math/BigInteger;

    .line 707
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->p:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->a:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->curve:Ljava/security/spec/EllipticCurve;

    .line 708
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->curve:Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECPoint;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->gx:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->gy:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->n:Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    .line 709
    return-void
.end method

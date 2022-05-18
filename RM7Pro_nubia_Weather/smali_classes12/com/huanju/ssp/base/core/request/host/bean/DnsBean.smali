.class public Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;
.super Ljava/lang/Object;
.source "DnsBean.java"


# instance fields
.field public host:Ljava/lang/String;

.field public id:J

.field public ipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->url:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->host:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->position:I

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;->id:J

    return-void
.end method

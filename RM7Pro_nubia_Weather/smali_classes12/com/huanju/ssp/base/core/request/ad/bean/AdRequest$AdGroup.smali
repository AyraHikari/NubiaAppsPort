.class Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdGroup"
.end annotation


# instance fields
.field private sesssionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sesssionId"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;->sesssionId:Ljava/lang/String;

    .line 668
    return-void
.end method

.method static synthetic access$5100(Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest$AdGroup;->sesssionId:Ljava/lang/String;

    return-object v0
.end method

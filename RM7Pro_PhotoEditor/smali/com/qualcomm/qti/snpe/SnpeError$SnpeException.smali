.class Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/SnpeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnpeException"
.end annotation


# instance fields
.field private code:I

.field final synthetic this$0:Lcom/qualcomm/qti/snpe/SnpeError;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;->this$0:Lcom/qualcomm/qti/snpe/SnpeError;

    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;->code:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;->code:I

    return v0
.end method

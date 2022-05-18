.class public Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;
.super Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/SnpeError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IllegalArgsOrStateException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/snpe/SnpeError;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;->this$0:Lcom/qualcomm/qti/snpe/SnpeError;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getErrorCode()I
    .locals 1

    invoke-super {p0}, Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;->getErrorCode()I

    move-result v0

    return v0
.end method

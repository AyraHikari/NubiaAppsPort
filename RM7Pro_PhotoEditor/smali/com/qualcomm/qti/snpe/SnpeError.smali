.class public Lcom/qualcomm/qti/snpe/SnpeError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;,
        Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;,
        Lcom/qualcomm/qti/snpe/SnpeError$NativeException;,
        Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;,
        Lcom/qualcomm/qti/snpe/SnpeError$SnpeException;,
        Lcom/qualcomm/qti/snpe/SnpeError$Error;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/qualcomm/qti/snpe/SnpeError;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error_code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error_message: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/qualcomm/qti/snpe/SnpeError;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError;->mInstance:Lcom/qualcomm/qti/snpe/SnpeError;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/SnpeError;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/snpe/SnpeError;->mInstance:Lcom/qualcomm/qti/snpe/SnpeError;

    :cond_0
    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError;->mInstance:Lcom/qualcomm/qti/snpe/SnpeError;

    return-object v0
.end method


# virtual methods
.method public getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;
    .locals 4

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-direct {p0, v2, p1, v3}, Lcom/qualcomm/qti/snpe/SnpeError;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-object v0
.end method

.method public getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;
    .locals 3

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-object v0
.end method

.method public getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;
    .locals 4

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-direct {p0, v2, p1, v3}, Lcom/qualcomm/qti/snpe/SnpeError;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-object v0
.end method

.method public getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;
    .locals 3

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-object v0
.end method

.method public getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;
    .locals 4

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    invoke-direct {p0, v2, p1, v3}, Lcom/qualcomm/qti/snpe/SnpeError;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-object v0
.end method

.method public getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;
    .locals 3

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v1

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getErrorMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    return-object v0
.end method

.method public getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;
    .locals 5

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$000(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$Error;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/qualcomm/qti/snpe/SnpeError$NativeException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    invoke-static {v0}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error_code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$200(Lcom/qualcomm/qti/snpe/SnpeError$Error;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " error_message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/qualcomm/qti/snpe/SnpeError$Error;->access$300(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/qualcomm/qti/snpe/SnpeError$NativeException;-><init>(Lcom/qualcomm/qti/snpe/SnpeError;ILjava/lang/String;Lcom/qualcomm/qti/snpe/SnpeError$1;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

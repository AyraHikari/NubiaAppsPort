.class public Lcn/nubia/touping/Utils/DecodeAndencodeUtils;
.super Ljava/lang/Object;
.source "DecodeAndencodeUtils.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "J70glAs63e518086"

.field private static final APP_KEY:Ljava/lang/String; = "bbc80188aa2aa8f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 23
    move-object v1, p0

    .line 25
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "bbc80188aa2aa8f3"

    const-string v3, "J70glAs63e518086"

    invoke-static {p0, v2, v3}, Lcom/nubia/aes/AesUtil;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 13
    move-object v1, p0

    .line 15
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "bbc80188aa2aa8f3"

    const-string v3, "J70glAs63e518086"

    invoke-static {p0, v2, v3}, Lcom/nubia/aes/AesUtil;->encode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 19
    :goto_0
    return-object v1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

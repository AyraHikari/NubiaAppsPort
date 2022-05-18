.class Lcom/hp/creals/asin_UnaryCRFunction;
.super Lcom/hp/creals/UnaryCRFunction;
.source "UnaryCRFunction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/hp/creals/UnaryCRFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 0

    .line 196
    invoke-virtual {p1}, Lcom/hp/creals/CR;->asin()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

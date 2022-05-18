.class Lcom/hp/creals/atan_UnaryCRFunction;
.super Lcom/hp/creals/UnaryCRFunction;
.source "UnaryCRFunction.java"


# instance fields
.field one:Lcom/hp/creals/CR;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/hp/creals/UnaryCRFunction;-><init>()V

    const/4 v0, 0x1

    .line 211
    invoke-static {v0}, Lcom/hp/creals/CR;->valueOf(I)Lcom/hp/creals/CR;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/creals/atan_UnaryCRFunction;->one:Lcom/hp/creals/CR;

    return-void
.end method


# virtual methods
.method public execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 213
    invoke-virtual {p1, p1}, Lcom/hp/creals/CR;->multiply(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v0

    .line 214
    iget-object p0, p0, Lcom/hp/creals/atan_UnaryCRFunction;->one:Lcom/hp/creals/CR;

    invoke-virtual {p0, v0}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hp/creals/CR;->divide(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hp/creals/CR;->sqrt()Lcom/hp/creals/CR;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/hp/creals/CR;->negate()Lcom/hp/creals/CR;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/hp/creals/CR;->select(Lcom/hp/creals/CR;Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Lcom/hp/creals/CR;->asin()Lcom/hp/creals/CR;

    move-result-object p0

    return-object p0
.end method

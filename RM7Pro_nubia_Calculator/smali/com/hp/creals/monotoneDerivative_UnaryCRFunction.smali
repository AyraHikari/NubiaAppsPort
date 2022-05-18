.class Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;
.super Lcom/hp/creals/UnaryCRFunction;
.source "UnaryCRFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;
    }
.end annotation


# instance fields
.field final deriv2_msd:[I

.field final difference_msd:[I

.field final f:[Lcom/hp/creals/UnaryCRFunction;

.field final f_high:[Lcom/hp/creals/CR;

.field final f_low:[Lcom/hp/creals/CR;

.field final f_mid:[Lcom/hp/creals/CR;

.field final high:[Lcom/hp/creals/CR;

.field final low:[Lcom/hp/creals/CR;

.field final mid:[Lcom/hp/creals/CR;


# direct methods
.method constructor <init>(Lcom/hp/creals/UnaryCRFunction;Lcom/hp/creals/CR;Lcom/hp/creals/CR;)V
    .locals 4

    .line 596
    invoke-direct {p0}, Lcom/hp/creals/UnaryCRFunction;-><init>()V

    const/4 v0, 0x1

    .line 575
    new-array v1, v0, [Lcom/hp/creals/UnaryCRFunction;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    .line 579
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    .line 580
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->mid:[Lcom/hp/creals/CR;

    .line 581
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    .line 582
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    .line 583
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_mid:[Lcom/hp/creals/CR;

    .line 584
    new-array v1, v0, [Lcom/hp/creals/CR;

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    .line 585
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->difference_msd:[I

    .line 586
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->deriv2_msd:[I

    .line 597
    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f:[Lcom/hp/creals/UnaryCRFunction;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 598
    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->low:[Lcom/hp/creals/CR;

    aput-object p2, v1, v2

    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->high:[Lcom/hp/creals/CR;

    aput-object p3, v1, v2

    .line 599
    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->mid:[Lcom/hp/creals/CR;

    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hp/creals/CR;->shiftRight(I)Lcom/hp/creals/CR;

    move-result-object v3

    aput-object v3, v1, v2

    .line 600
    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    invoke-virtual {p1, p2}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    aput-object v3, v1, v2

    .line 601
    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_mid:[Lcom/hp/creals/CR;

    iget-object v3, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->mid:[Lcom/hp/creals/CR;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object v3

    aput-object v3, v1, v2

    .line 602
    iget-object v1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    invoke-virtual {p1, p3}, Lcom/hp/creals/UnaryCRFunction;->execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p1

    aput-object p1, v1, v2

    .line 603
    invoke-virtual {p3, p2}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p1

    .line 609
    iget-object p2, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_high:[Lcom/hp/creals/CR;

    aget-object p2, p2, v2

    iget-object p3, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_mid:[Lcom/hp/creals/CR;

    aget-object p3, p3, v2

    invoke-virtual {p3, v0}, Lcom/hp/creals/CR;->shiftLeft(I)Lcom/hp/creals/CR;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->subtract(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    iget-object p3, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->f_low:[Lcom/hp/creals/CR;

    aget-object p3, p3, v2

    invoke-virtual {p2, p3}, Lcom/hp/creals/CR;->add(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;

    move-result-object p2

    .line 610
    iget-object p3, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->difference_msd:[I

    invoke-virtual {p1}, Lcom/hp/creals/CR;->msd()I

    move-result p1

    aput p1, p3, v2

    .line 611
    iget-object p1, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->deriv2_msd:[I

    invoke-virtual {p2}, Lcom/hp/creals/CR;->msd()I

    move-result p2

    iget-object p0, p0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;->difference_msd:[I

    aget p0, p0, v2

    sub-int/2addr p2, p0

    add-int/lit8 p2, p2, 0x4

    aput p2, p1, v2

    return-void
.end method


# virtual methods
.method public execute(Lcom/hp/creals/CR;)Lcom/hp/creals/CR;
    .locals 1

    .line 665
    new-instance v0, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;

    invoke-direct {v0, p0, p1}, Lcom/hp/creals/monotoneDerivative_UnaryCRFunction$monotoneDerivativeCR;-><init>(Lcom/hp/creals/monotoneDerivative_UnaryCRFunction;Lcom/hp/creals/CR;)V

    return-object v0
.end method

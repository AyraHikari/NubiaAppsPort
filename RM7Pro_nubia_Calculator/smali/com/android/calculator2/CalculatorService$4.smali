.class Lcom/android/calculator2/CalculatorService$4;
.super Landroid/util/Property;
.source "CalculatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/CalculatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/widget/TextView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/CalculatorService;


# direct methods
.method constructor <init>(Lcom/android/calculator2/CalculatorService;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/android/calculator2/CalculatorService$4;->this$0:Lcom/android/calculator2/CalculatorService;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/widget/TextView;)Ljava/lang/Integer;
    .locals 0

    .line 705
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 702
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/calculator2/CalculatorService$4;->get(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .locals 0

    .line 710
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 702
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/calculator2/CalculatorService$4;->set(Landroid/widget/TextView;Ljava/lang/Integer;)V

    return-void
.end method

.class Lcom/zte/mifavor/widget/GregorianLunarDateView$2;
.super Ljava/lang/Object;
.source "GregorianLunarDateView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$1300(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 201
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setGregorian(Z)V

    return-void
.end method

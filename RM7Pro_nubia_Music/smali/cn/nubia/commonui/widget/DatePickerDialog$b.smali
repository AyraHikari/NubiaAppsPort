.class Lcn/nubia/commonui/widget/DatePickerDialog$b;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog$b;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcn/nubia/commonui/widget/DatePickerView;III)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 239
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$302(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 241
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$602(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 243
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$700(Lcn/nubia/commonui/widget/DatePickerDialog;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 244
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    iput-boolean v4, v0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 245
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$800(Lcn/nubia/commonui/widget/DatePickerDialog;III)V

    .line 246
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    iput-boolean v5, v0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 250
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1000(Lcn/nubia/commonui/widget/DatePickerDialog;III)V

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/widget/DatePickerView;->setDayLabelVisible(Z)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$b;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1000(Lcn/nubia/commonui/widget/DatePickerDialog;III)V

    goto :goto_0
.end method

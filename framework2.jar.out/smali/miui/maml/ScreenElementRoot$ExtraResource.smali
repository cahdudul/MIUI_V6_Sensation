.class Lmiui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtraResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    }
.end annotation


# instance fields
.field mResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;",
            ">;"
        }
    .end annotation
.end field

.field mScales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "defaultDen"    # I

    .prologue
    const/4 v5, 0x0

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 699
    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 700
    .local v0, "defaultRes":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    iput p2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 701
    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    .line 703
    iput v5, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    .line 704
    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 705
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    .line 706
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v3, "extraResourcesDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 708
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v3, "extraResourcesScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 709
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string v3, "extraResources"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 711
    new-instance v1, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;

    invoke-direct {v1, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 712
    .local v1, "defaultScale":Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    iput p2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mDensity:I

    .line 713
    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScreenWidth:I

    .line 715
    iput v5, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mSizeType:I

    .line 716
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F

    .line 717
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v3, "extraScaleByDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 719
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v3, "extraScaleByScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 720
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string v3, "extraScales"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 721
    return-void
.end method


# virtual methods
.method createResource(Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 745
    new-instance v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v3, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 747
    .local v3, "res":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    :try_start_0
    sget-object v4, Lmiui/maml/ScreenElementRoot$3;->$SwitchMap$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 784
    :goto_0
    return-object v3

    .line 749
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 750
    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1e0

    div-int/lit16 v4, v4, 0xf0

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "den"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 753
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 782
    const-string v4, "ScreenElementRoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format error of string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    .line 757
    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    mul-int/lit16 v4, v4, 0xf0

    div-int/lit16 v4, v4, 0x1e0

    invoke-static {v4}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 760
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    goto :goto_0

    .line 763
    :pswitch_2
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "info":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "metrics":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    .line 766
    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 767
    const/4 v4, 0x0

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    .line 768
    array-length v4, v2

    if-lt v4, v7, :cond_0

    .line 769
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    .line 771
    :cond_0
    array-length v4, v1

    if-ne v4, v6, :cond_1

    .line 772
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 773
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    goto/16 :goto_0

    .line 775
    :cond_1
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 776
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method createScale(Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .prologue
    const/4 v6, 0x3

    .line 788
    new-instance v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;

    invoke-direct {v3, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 790
    .local v3, "scale":Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "info":[Ljava/lang/String;
    sget-object v4, Lmiui/maml/ScreenElementRoot$3;->$SwitchMap$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 819
    .end local v1    # "info":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 793
    .restart local v1    # "info":[Ljava/lang/String;
    :pswitch_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mDensity:I

    .line 794
    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mDensity:I

    invoke-static {v4}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x1e0

    div-int/lit16 v4, v4, 0xf0

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScreenWidth:I

    .line 796
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    .end local v1    # "info":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 817
    const-string v4, "ScreenElementRoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format error of string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":[Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScreenWidth:I

    .line 800
    iget v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScreenWidth:I

    mul-int/lit16 v4, v4, 0xf0

    div-int/lit16 v4, v4, 0x1e0

    invoke-static {v4}, Lmiui/maml/ResourceManager;->retranslateDensity(I)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mDensity:I

    .line 802
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F

    goto :goto_0

    .line 805
    :pswitch_2
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, "metrics":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScreenWidth:I

    .line 807
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mDensity:I

    .line 808
    const/4 v4, 0x0

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mSizeType:I

    .line 809
    array-length v4, v2

    if-lt v4, v6, :cond_0

    .line 810
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mSizeType:I

    .line 812
    :cond_0
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;->mScale:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    .locals 9
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;",
            ">;)",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;"
        }
    .end annotation

    .prologue
    .line 847
    .local p4, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;>;"
    const/4 v7, 0x0

    .line 848
    .local v7, "result":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    const v5, 0x7fffffff

    .line 849
    .local v5, "minDiffDen":I
    const v6, 0x7fffffff

    .line 850
    .local v6, "minDiffSw":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;

    .line 853
    .local v4, "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mSizeType:I

    if-eqz v8, :cond_1

    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mSizeType:I

    if-ne v8, p3, :cond_0

    .line 856
    :cond_1
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mDensity:I

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 857
    .local v1, "diffDen":I
    if-ge v1, v5, :cond_2

    .line 858
    move v5, v1

    .line 859
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 860
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 861
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_2
    if-ne v1, v5, :cond_0

    .line 863
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 864
    .local v2, "diffSw":I
    if-ge v2, v6, :cond_3

    .line 865
    move v6, v2

    .line 866
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 868
    :cond_3
    if-ne v2, v6, :cond_0

    .line 869
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    .end local v1    # "diffDen":I
    .end local v2    # "diffSw":I
    .end local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;

    .line 874
    .restart local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mSizeType:I

    if-ne v8, p3, :cond_7

    .line 875
    move-object v7, v4

    .line 881
    .end local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    :cond_6
    return-object v7

    .line 877
    .restart local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    :cond_7
    iget v8, v4, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;->mSizeType:I

    if-nez v8, :cond_5

    .line 878
    move-object v7, v4

    goto :goto_1
.end method

.method public findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .locals 1
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I

    .prologue
    .line 838
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    return-object v0
.end method

.method public findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    .locals 1
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;

    return-object v0
.end method

.method inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 10
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;",
            ">;",
            "Ljava/lang/String;",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 725
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "resources":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 728
    .local v6, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 729
    .local v4, "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    :try_start_0
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    if-ne p1, v7, :cond_2

    .line 730
    invoke-virtual {p0, v6, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource;->createResource(Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v4

    .line 734
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 735
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    :cond_2
    iget-object v7, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    if-ne p1, v7, :cond_0

    .line 732
    invoke-virtual {p0, v6, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource;->createScale(Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)Lmiui/maml/ScreenElementRoot$ExtraResource$Scale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ScreenElementRoot"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "format error of attribute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 742
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
    .end local v5    # "resources":[Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method parseSizeType(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "size":I
    const-string v1, "small"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const/4 v0, 0x1

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    const-string v1, "normal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    const/4 v0, 0x2

    goto :goto_0

    .line 828
    :cond_2
    const-string v1, "large"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    const/4 v0, 0x3

    goto :goto_0

    .line 830
    :cond_3
    const-string v1, "xlarge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    const/4 v0, 0x4

    goto :goto_0
.end method
